class BaseService
  def initialize(context, repo)
    @context = context
    @repo = repo
    yield(@callbacks) if block_given?
  end

  def run
    raise 'Action not described'
  end

  private

  def success(*args)
    callback(:success, *args)
  end

  def failure(*args)
    callback(:failure, *args)
  end

  def callback(name, *args)
    @callbacks.call(name, *args)
    args
  end
end