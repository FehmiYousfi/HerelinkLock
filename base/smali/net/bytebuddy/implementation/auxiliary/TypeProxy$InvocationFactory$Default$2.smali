.class final enum Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default$2;
.super Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
.source "TypeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/auxiliary/TypeProxy$1;)V

    return-void
.end method


# virtual methods
.method public invoke(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 0

    .line 342
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    return-object p1
.end method
