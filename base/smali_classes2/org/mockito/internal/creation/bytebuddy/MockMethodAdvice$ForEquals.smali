.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForEquals;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForEquals"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enter(Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$Argument;
            value = 0x0
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lnet/bytebuddy/asm/Advice$Enter;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    return-void
.end method

.method private static enter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/asm/Advice$This;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodEnter;
        skipOn = Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;
    .end annotation

    .line 262
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->isMock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
