.class public Landroid/hardware/camera2/legacy/GLThreadManager;
.super Ljava/lang/Object;
.source "GLThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;,
        Landroid/hardware/camera2/legacy/GLThreadManager$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_ALLOW_FRAMES:I = 0x5

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_DROP_FRAMES:I = 0x4

.field private static final MSG_NEW_CONFIGURATION:I = 0x1

.field private static final MSG_NEW_FRAME:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mGLHandlerCb:Landroid/os/Handler$Callback;

.field private final mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object p1
.end method

.method public constructor <init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "facing"    # I
    .param p3, "state"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string/jumbo v1, "GL Preview Producer"

    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 73
    new-instance v0, Landroid/hardware/camera2/legacy/GLThreadManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/GLThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    .line 145
    new-instance v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-direct {v0, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 146
    const-string/jumbo v0, "CameraDeviceGLThread-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 148
    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 144
    return-void
.end method


# virtual methods
.method public allowNewFrames()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    return-void
.end method

.method public getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public ignoreNewFrames()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    return-void
.end method

.method public queueNewFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 194
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 200
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "GLThread dropping frame.  Not consuming frames quickly enough!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public quit()V
    .locals 8

    .prologue
    .line 177
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 178
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 179
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    .line 181
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Thread %s (%d) interrupted while quitting."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 184
    iget-object v5, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v5}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 183
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 6
    .param p2, "collector"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Landroid/view/Surface;Landroid/util/Size;>;>;"
    const/4 v5, 0x0

    .line 217
    const-string/jumbo v4, "collector must not be null"

    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v4, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 220
    .local v2, "handler":Landroid/os/Handler;
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 221
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    invoke-direct {v1, v0, p1, p2}, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 223
    .local v1, "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 224
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 216
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    .line 158
    return-void
.end method

.method public waitUntilIdle()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilIdle()V

    .line 258
    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    .line 165
    return-void
.end method
