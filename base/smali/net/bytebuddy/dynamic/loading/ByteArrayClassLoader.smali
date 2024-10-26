.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.super Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;
.source "ByteArrayClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
    }
.end annotation


# static fields
.field private static final FROM_BEGINNING:I = 0x0

.field private static final NO_URL:Ljava/net/URL; = null

.field private static final PACKAGE_LOOKUP_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

.field protected static final SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

.field private static final UNLOADED_TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final URL_SCHEMA:Ljava/lang/String; = "bytebuddy"


# instance fields
.field protected final accessControlContext:Ljava/security/AccessControlContext;

.field protected final classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

.field protected final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field protected final persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

.field protected final protectionDomain:Ljava/security/ProtectionDomain;

.field protected final typeDefinitions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->PACKAGE_LOOKUP_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    .line 69
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 108
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    .line 136
    sget-object v6, Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;->INSTANCE:Lnet/bytebuddy/dynamic/loading/NoOpClassFileTransformer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Ljava/lang/instrument/ClassFileTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Ljava/lang/instrument/ClassFileTransformer;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 156
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    .line 157
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->protectionDomain:Ljava/security/ProtectionDomain;

    .line 158
    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    .line 159
    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    .line 160
    iput-object p6, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    .line 161
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->accessControlContext:Ljava/security/AccessControlContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    .line 119
    sget-object v3, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v5, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;
    .locals 1

    .line 39
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->PACKAGE_LOOKUP_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    return-object v0
.end method

.method static synthetic access$100(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 39
    invoke-virtual/range {p0 .. p8}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 39
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doGetPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Ljava/net/URL;
    .locals 1

    .line 39
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->NO_URL:Ljava/net/URL;

    return-object v0
.end method

.method private doGetPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p1

    return-object p1
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "ZZ)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 212
    invoke-static/range {p0 .. p5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->of(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 218
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 220
    :try_start_0
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p4, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p6, :cond_1

    .line 221
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    if-ne p4, p0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Class already loaded: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1
    :goto_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 226
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot load class "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method public static of(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)Ljava/lang/ClassLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Z)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 187
    new-instance p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 234
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;->getClassLoadingLock(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 240
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, p0, :cond_2

    :cond_0
    if-nez p2, :cond_1

    .line 242
    iget-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    if-nez p2, :cond_3

    .line 242
    iget-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    throw v1

    :catchall_1
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->lookup(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    :try_start_0
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    sget-object v5, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->UNLOADED_TYPE:Ljava/lang/Class;

    iget-object v6, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->protectionDomain:Ljava/security/ProtectionDomain;

    move-object v3, p0

    move-object v4, p1

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Ljava/lang/instrument/ClassFileTransformer;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 262
    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;

    invoke-direct {v1, p0, p1, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;-><init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[B)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->accessControlContext:Ljava/security/AccessControlContext;

    invoke-static {v1, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/instrument/IllegalClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not legal"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 271
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    .line 277
    sget-object p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;-><init>(Ljava/net/URL;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
