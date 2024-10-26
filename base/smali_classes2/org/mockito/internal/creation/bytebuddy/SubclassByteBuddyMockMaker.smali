.class public Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "SubclassByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;


# instance fields
.field private final cachingMockBytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassInjectionLoader;-><init>()V

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;

    invoke-direct {v1, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->cachingMockBytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    return-void
.end method

.method private static asInternalMockHandler(Lorg/mockito/invocation/MockHandler;)Lorg/mockito/internal/InternalMockHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MockHandler;",
            ")",
            "Lorg/mockito/internal/InternalMockHandler<",
            "*>;"
        }
    .end annotation

    .line 167
    instance-of v0, p0, Lorg/mockito/internal/InternalMockHandler;

    if-eqz v0, :cond_0

    .line 174
    check-cast p0, Lorg/mockito/internal/InternalMockHandler;

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Lorg/mockito/exceptions/base/MockitoException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "At the moment you cannot provide own implementations of MockHandler."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Please refer to the javadocs for the MockMaker interface."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static describeClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', loaded by classloader : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static describeClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static ensureMockIsAssignableToMockedType(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p0

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ""

    if-nez v0, :cond_2

    .line 96
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    const/4 v6, 0x3

    const-string v7, "Mockito cannot mock this class: "

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    aput-object v5, v8, v1

    const-string p1, "Mockito can only mock non-private & non-final classes."

    aput-object p1, v8, v4

    const-string p1, "If you\'re not sure why you\'re getting this error, please report to the mailing list."

    aput-object p1, v8, v6

    const/4 p1, 0x4

    aput-object v5, v8, p1

    const/4 p1, 0x5

    invoke-static {}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Java 8 early builds have bugs that were addressed in Java 1.8.0_45, please update your JDK!\n"

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    const-string v2, "IBM J9 VM"

    const-string v3, "Early IBM virtual machine are known to have issues with Mockito, please upgrade to an up-to-date version.\n"

    const-string v4, "Hotspot"

    invoke-static {v2, v3, v4, v1}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, p1

    const/4 p1, 0x6

    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, p1

    const/4 p1, 0x7

    aput-object v5, v8, p1

    const/16 p1, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Underlying exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, p1

    invoke-static {v8}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 97
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    const-string p1, "Most likely it is due to mocking a private class that is not visible to Mockito"

    aput-object p1, v6, v1

    aput-object v5, v6, v4

    invoke-static {v6}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mockito cannot mock arrays: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object v5, v4, v1

    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")TT;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mockito/plugins/InstantiatorProvider;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;

    move-result-object v1

    .line 47
    :try_start_0
    invoke-interface {v1, v0}, Lorg/mockito/internal/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/mockito/internal/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :try_start_1
    move-object v3, v2

    check-cast v3, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    .line 49
    new-instance v4, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-static {p2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->asInternalMockHandler(Lorg/mockito/invocation/MockHandler;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object p2

    invoke-direct {v4, p2, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    invoke-interface {v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    .line 51
    invoke-static {p1, v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->ensureMockIsAssignableToMockedType(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/mockito/internal/creation/instance/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 64
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create mock instance of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p2

    const/4 v2, 0x0

    .line 53
    :goto_0
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ClassCastException occurred while creating the mockito mock :"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  class to mock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  created class : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  proxy instance class : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->describeClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  instance creation by : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x5

    const-string v0, ""

    aput-object v0, v4, p1

    const/4 p1, 0x6

    const-string v1, "You might experience classloading issues, please ask the mockito mailing-list."

    aput-object v1, v4, p1

    const/4 p1, 0x7

    aput-object v0, v4, p1

    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->cachingMockBytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->withMockFeatures(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;)Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 77
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 129
    instance-of v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {p1}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->getMockitoInterceptor()Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->getMockHandler()Lorg/mockito/invocation/MockHandler;

    move-result-object p1

    return-object p1
.end method

.method public isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .line 144
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;Ljava/lang/Class;)V

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 137
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-static {p2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->asInternalMockHandler(Lorg/mockito/invocation/MockHandler;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    invoke-interface {p1, v0}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    return-void
.end method
