module Alto
  class Alto

    def initialize(opts = {})
      @path = opts['path']
      @lang = opts['lang']
    end

    def alto
      if File.exist?(@path)
        message = @lang == 'hakata' ? ' あるくさ' : ' exists.'
        logging('INFO', @path + message)
      else
        message = @lang == 'hakata' ? ' ないくさ' : ' does not exists.'
        logging('WARN', @path + message)
      end
    end

    private

    def action
      #
      # 対象のファイルをなんかしたい
      #
    end

    def logging(level, message)
      #
      # ログっぽい出力を得るように強引に puts で
      #
      logdate = Time.now
      puts '[' + logdate.to_s + '] ' + level +  ' : ' + message
    end

  end
end
