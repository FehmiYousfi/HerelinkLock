.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;
.super Ljava/lang/ThreadLocal;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfCallInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;-><init>()V

    return-void
.end method


# virtual methods
.method checkSuperCall(Ljava/lang/Object;)Z
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
