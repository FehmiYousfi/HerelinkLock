.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;
.super Ljava/lang/Object;
.source "MockMethodInterceptor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$DispatcherDefaultingToRealMethod;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForWriteReplace;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForEquals;,
        Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor$ForHashCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63445fa12f3038a3L


# instance fields
.field final handler:Lorg/mockito/internal/InternalMockHandler;

.field private final mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

.field private final serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/internal/InternalMockHandler;

    .line 33
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 34
    new-instance p1, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    invoke-direct {p1}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    return-void
.end method

.method private createMockitoMethod(Ljava/lang/reflect/Method;)Lorg/mockito/internal/invocation/MockitoMethod;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->mockCreationSettings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->isSerializable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-direct {v0, p1}, Lorg/mockito/internal/invocation/SerializableMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lorg/mockito/internal/creation/DelegatingMethod;

    invoke-direct {v0, p1}, Lorg/mockito/internal/creation/DelegatingMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method doIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/internal/InternalMockHandler;

    new-instance v7, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation;

    invoke-direct {p0, p2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->createMockitoMethod(Ljava/lang/reflect/Method;)Lorg/mockito/internal/invocation/MockitoMethod;

    move-result-object v3

    invoke-static {}, Lorg/mockito/internal/progress/SequenceNumber;->next()I

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation;-><init>(Ljava/lang/Object;Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;I)V

    invoke-interface {v0, v7}, Lorg/mockito/internal/InternalMockHandler;->handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMockHandler()Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/internal/InternalMockHandler;

    return-object v0
.end method

.method public getSerializationSupport()Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->serializationSupport:Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;

    return-object v0
.end method
