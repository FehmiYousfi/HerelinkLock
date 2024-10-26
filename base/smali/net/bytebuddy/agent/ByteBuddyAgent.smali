.class public Lnet/bytebuddy/agent/ByteBuddyAgent;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    }
.end annotation


# static fields
.field private static final AGENT_CLASS_PROPERTY:Ljava/lang/String; = "Agent-Class"

.field private static final ATTACH_METHOD_NAME:Ljava/lang/String; = "attach"

.field private static final BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader; = null

.field private static final BUFFER_SIZE:I = 0x400

.field private static final CAN_REDEFINE_CLASSES_PROPERTY:Ljava/lang/String; = "Can-Redefine-Classes"

.field private static final CAN_RETRANSFORM_CLASSES_PROPERTY:Ljava/lang/String; = "Can-Retransform-Classes"

.field private static final CAN_SET_NATIVE_METHOD_PREFIX:Ljava/lang/String; = "Can-Set-Native-Method-Prefix"

.field private static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field private static final DETACH_METHOD_NAME:Ljava/lang/String; = "detach"

.field private static final END_OF_FILE:I = -0x1

.field private static final INSTRUMENTATION_METHOD:Ljava/lang/String; = "getInstrumentation"

.field private static final LOAD_AGENT_METHOD_NAME:Ljava/lang/String; = "loadAgent"

.field private static final MANIFEST_VERSION_VALUE:Ljava/lang/String; = "1.0"

.field private static final START_INDEX:I

.field private static final STATIC_MEMBER:Ljava/lang/Object;

.field private static final UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

.field private static final WITHOUT_ARGUMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    .line 49
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 49
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    return-object v0
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 169
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 182
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    .line 207
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    invoke-static {p3, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    .line 194
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)V
    .locals 1

    .line 219
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V
    .locals 1

    .line 232
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    .line 257
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    invoke-static {p3, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    .line 244
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method private static doGetInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 4

    .line 379
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/agent/Installer;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstrumentation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 381
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 382
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/instrument/Instrumentation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 384
    :catch_0
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

    return-object v0
.end method

.method public static getInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 2

    .line 153
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Byte Buddy agent is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install()Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 286
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method public static install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 300
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    invoke-static {p0, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 3

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent;

    monitor-enter v0

    .line 328
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 330
    monitor-exit v0

    return-object v1

    .line 332
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    invoke-static {p0, p1, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V

    .line 333
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static install(Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 314
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object p0

    return-object p0
.end method

.method private static install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V
    .locals 8

    const-string v0, "detach"

    .line 345
    invoke-interface {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v1

    .line 346
    invoke-interface {v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    invoke-interface {v1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->getVirtualMachineType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "attach"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 351
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 352
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v4, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 353
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "loadAgent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 355
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v3

    .line 356
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 357
    invoke-interface {p3}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;->resolve()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v6

    aput-object p2, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array p2, v6, [Ljava/lang/Class;

    .line 360
    invoke-virtual {v1, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v6, [Ljava/lang/Object;

    .line 361
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p2

    new-array p3, v6, [Ljava/lang/Class;

    .line 360
    invoke-virtual {v1, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v0, v6, [Ljava/lang/Object;

    .line 361
    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 366
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error during attachment using: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    .line 364
    throw p0

    .line 347
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No compatible attachment provider is not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
