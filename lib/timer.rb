class Timer
  # TODO logger
  def call(&block)
    start_time = get_current_time

    block.call

    finish_time = get_current_time

    finish_time - start_time
  end

  private
    def get_current_time
      Time.now
    end
end
