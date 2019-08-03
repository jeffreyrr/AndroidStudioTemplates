package ${packageName}

import android.content.Context

class ${className}Presenter(private val context: Context, private val view: ${className}Contract.View) : BasePresenter(), ${className}Contract.Presenter {

    init {
        this.view.setPresenter(this)
        subscribe(this.context)
    }

    override fun start() {
    }

    override fun stop() {
    }
}
