.class public Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "InlineByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final INITIALIZATION_ERROR:Ljava/lang/Throwable;

.field private static final INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;


# instance fields
.field private final bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

.field private final mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, ".raw"

    .line 99
    const-class v1, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 102
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install()Ljava/lang/instrument/Instrumentation;

    move-result-object v8

    .line 103
    invoke-interface {v8}, Ljava/lang/instrument/Instrumentation;->isRetransformClassesSupported()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "mockitoboot"

    const-string v10, ".jar"

    .line 109
    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 110
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 111
    new-instance v10, Ljava/util/jar/JarOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v11, "org/mockito/internal/creation/bytebuddy/MockMethodDispatcher"

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 122
    new-instance v0, Ljava/util/jar/JarEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".class"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 126
    :goto_0
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 127
    invoke-virtual {v10, v0, v7, v1}, Ljava/util/jar/JarOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    :cond_0
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 132
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :try_start_4
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->close()V

    .line 136
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, v9}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-interface {v8, v0}, Ljava/lang/instrument/Instrumentation;->appendToBootstrapClassLoaderSearch(Ljava/util/jar/JarFile;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v0, "org.mockito.internal.creation.bytebuddy.MockMethodDispatcher"

    .line 138
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v3

    move-object v3, v8

    goto/16 :goto_1

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "The MockMethodDispatcher must not be loaded manually but must be injected into the bootstrap class loader."

    aput-object v9, v8, v7

    aput-object v2, v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The dispatcher class was already loaded by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    invoke-static {v8}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    .line 146
    :try_start_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "Mockito failed to inject the MockMethodDispatcher class into the bootstrap class loader"

    aput-object v9, v8, v7

    aput-object v2, v8, v5

    const-string v9, "It seems like your current VM does not support the instrumentation API correctly."

    aput-object v9, v8, v4

    invoke-static {v8}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_0
    move-exception v0

    .line 130
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v0

    .line 116
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-array v9, v6, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The MockMethodDispatcher class file is not locatable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    aput-object v2, v9, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The class loader responsible for looking up the resource: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    invoke-static {v9}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 134
    :try_start_8
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->close()V

    throw v0

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v8, "Byte Buddy requires retransformation for creating inline mocks. This feature is unavailable on the current VM."

    aput-object v8, v1, v7

    aput-object v2, v1, v5

    const-string v8, "You cannot use this mock maker on this VM"

    aput-object v8, v1, v4

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 152
    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "Mockito could not self-attach a Java agent to the current VM. This feature is required for inline mocking."

    aput-object v9, v8, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This error occured due to an I/O error during the creation of this agent: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    aput-object v2, v8, v4

    const-string v2, "Potentially, the current VM does not support the instrumentation API correctly"

    aput-object v2, v8, v6

    invoke-static {v8}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 162
    :goto_1
    sput-object v3, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    .line 163
    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;

    invoke-direct {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 171
    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;

    sget-object v3, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-direct {v2, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;-><init>(Ljava/lang/instrument/Instrumentation;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;)V

    invoke-direct {v0, v2, v1}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    return-void

    .line 172
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoInitializationException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Could not initialize inline Byte Buddy mock maker. (This mock maker is not supported on Android.)"

    aput-object v4, v2, v3

    const-string v3, ""

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/mockito/exceptions/base/MockitoInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 91
    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    return-object v0
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

    .line 261
    instance-of v0, p0, Lorg/mockito/internal/InternalMockHandler;

    if-eqz v0, :cond_0

    .line 268
    check-cast p0, Lorg/mockito/internal/InternalMockHandler;

    return-object p0

    .line 262
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

.method private prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 16
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

    move-object/from16 v0, p2

    .line 212
    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, ""

    if-nez v1, :cond_3

    .line 218
    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    const-string v10, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    const/4 v11, 0x6

    const-string v12, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const-string v9, "Mockito cannot mock this class: "

    if-nez v1, :cond_2

    .line 231
    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    aput-object v6, v7, v2

    const-string v2, "If you\'re not sure why you\'re getting this error, please report to the mailing list."

    aput-object v2, v7, v5

    aput-object v6, v7, v15

    invoke-static {}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Java 8 early builds have bugs that were addressed in Java 1.8.0_45, please update your JDK!\n"

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    const-string v3, "IBM J9 VM"

    const-string v4, "Early IBM virtual machine are known to have issues with Mockito, please upgrade to an up-to-date version.\n"

    const-string v5, "Hotspot"

    invoke-static {v3, v4, v5, v2}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v14

    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v13

    aput-object v6, v7, v11

    const/4 v2, 0x7

    aput-object v12, v7, v2

    const/16 v2, 0x8

    aput-object v10, v7, v2

    const/16 v2, 0x9

    aput-object v6, v7, v2

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Underlying exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v7}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :cond_1
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "Most likely it is a private class that is not visible by Mockito"

    aput-object v3, v7, v2

    aput-object v6, v7, v5

    aput-object v12, v7, v15

    aput-object v10, v7, v14

    aput-object v6, v7, v13

    invoke-static {v7}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 219
    :cond_2
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "Can not mock final classes with the following settings :"

    aput-object v3, v7, v2

    const-string v2, " - explicit serialization (e.g. withSettings().serializable())"

    aput-object v2, v7, v5

    const-string v2, " - extra interfaces (e.g. withSettings().extraInterfaces(...))"

    aput-object v2, v7, v15

    aput-object v6, v7, v14

    aput-object v12, v7, v13

    aput-object v10, v7, v11

    const/4 v2, 0x7

    aput-object v6, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Underlying exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-static {v7}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 213
    :cond_3
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Arrays cannot be mocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    aput-object v6, v5, v2

    invoke-static {v5}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 3
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

    .line 182
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    .line 184
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mockito/plugins/InstantiatorProvider;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;

    move-result-object v1

    .line 186
    :try_start_0
    invoke-interface {v1, v0}, Lorg/mockito/internal/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-static {p2}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->asInternalMockHandler(Lorg/mockito/invocation/MockHandler;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 188
    iget-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {p1, v1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    instance-of p1, v1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-eqz p1, :cond_0

    .line 190
    move-object p1, v1

    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {p1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V
    :try_end_0
    .catch Lorg/mockito/internal/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 194
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create mock instance of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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

    .line 201
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

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

    .line 207
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 277
    :cond_0
    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/internal/InternalMockHandler;

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

    .line 292
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;Ljava/lang/Class;)V

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 283
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-static {p2}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->asInternalMockHandler(Lorg/mockito/invocation/MockHandler;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/internal/InternalMockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 284
    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-virtual {p2, p1, v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    instance-of p2, p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-eqz p2, :cond_0

    .line 286
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {p1, v0}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    :cond_0
    return-void
.end method
