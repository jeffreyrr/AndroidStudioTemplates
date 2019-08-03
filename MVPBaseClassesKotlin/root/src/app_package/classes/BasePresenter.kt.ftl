package ${packageName}

import android.app.Activity
import android.content.Context
import androidx.annotation.NonNull

open class BasePresenter {
    private lateinit var mContext: Context

    fun subscribe(@NonNull context: Context) {
        this.mContext = context
    }

    fun isSubscribed(): Boolean {
        return ::mContext.isInitialized
    }
}
