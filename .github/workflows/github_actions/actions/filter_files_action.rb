# actions/filter_files_action.rb
class FilterFilesAction < Sublayer::Actions::Base
  def initialize(repo_path:, file_names:)
    @repo_path = repo_path
    @file_names = file_names
  end

  def call
    ignored_patterns = load_contextignore
    filter_file_names(@file_names, ignored_patterns)
  end

  private

  # Method to load .contextignore patterns
  def load_contextignore
    contextignore_path = File.join(@repo_path, '.contextignore')
    return [] unless File.exist?(contextignore_path)

    File.readlines(contextignore_path).map(&:strip).reject do |line|
      line.empty? || line.start_with?('#')
    end
  end

  # Method to filter file names based on ignore patterns
  def filter_file_names(file_names, ignored_patterns)
    file_names.reject do |file|
      ignored_patterns.any? do |pattern|
        File.fnmatch?(pattern, file) ||
        File.fnmatch?(pattern, file, File::FNM_PATHNAME) ||
        file.start_with?(pattern.chomp('/'))
      end
    end
  end
end