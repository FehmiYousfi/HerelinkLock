.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;
.super Ljava/lang/Object;
.source "MockMethodInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForWriteReplace"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doWriteReplace(Lorg/mockito/internal/creation/bytebuddy/MockAccess;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lorg/mockito/internal/creation/bytebuddy/MockAccess;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/This;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->getMockitoInterceptor()Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->getSerializationSupport()Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->writeReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
