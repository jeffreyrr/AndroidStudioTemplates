package ${packageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${className}Fragment : BaseFragment(), ${className}Contract.View {

    private var presenter: ${className}Contract.Presenter? = null

    companion object {
        const val TAG: String = "${className}Fragment"

        fun newInstance() = ${className}Fragment()
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val view = inflater.inflate(R.layout.${fragmentLayoutName}_layout, container, false)
        this.presenter = ${className}Presenter(context!!, (this as ${className}Contract.View))
        return view
    }

   override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        // button.setOnClickListener {
        //     presenter?.navigateToDestination()
        // }
    }

    override fun onStart() {
        super.onStart()
        this.presenter?.start()
    }

    override fun onStop() {
        super.onStop()
        this.presenter?.stop()
    }

    override fun setPresenter(presenter: ${className}Contract.Presenter) {
        this.presenter = presenter
    }
}
