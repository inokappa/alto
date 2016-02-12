module Alto
  class Alto

    def initialize(opts = {})
      @path = opts['path']
    end

    def alto
      if File.exist?(@path)
        logging('INFO', @path + ' exists.')
      else
        logging('INFO', @path + ' does not exists.')
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
      if level == 'DEBUG'
        puts '[' + logdate.to_s + '] ' + level +  ' : ' + message
      elsif level == 'INFO'
        puts '[' + logdate.to_s + '] ' + level +  '  : ' + message
      end
    end

  end
end
