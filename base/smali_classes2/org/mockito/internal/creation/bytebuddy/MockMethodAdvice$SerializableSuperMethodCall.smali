.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializableSuperMethodCall"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final identifier:Ljava/lang/String;

.field private final instance:Ljava/lang/Object;

.field private final origin:Lorg/mockito/internal/invocation/SerializableMethod;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-direct {v0, p2}, Lorg/mockito/internal/invocation/SerializableMethod;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->origin:Lorg/mockito/internal/invocation/SerializableMethod;

    .line 168
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->identifier:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->instance:Ljava/lang/Object;

    .line 170
    iput-object p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->origin:Lorg/mockito/internal/invocation/SerializableMethod;

    invoke-virtual {v0}, Lorg/mockito/internal/invocation/SerializableMethod;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    :cond_0
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->instance:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;

    move-result-object v1

    .line 185
    instance-of v2, v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    if-eqz v2, :cond_1

    .line 188
    check-cast v1, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    invoke-static {v1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$500(Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;)Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->instance:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SelfCallInfo;->set(Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$SerializableSuperMethodCall;->arguments:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->access$400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Unexpected dispatcher for advice-based super call"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
