.class public final Lorg/eclipse/californium/elements/config/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;,
        Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FILE:Ljava/io/File;

.field public static final DEFAULT_FILE_NAME:Ljava/lang/String; = "Californium3.properties"

.field public static final DEFAULT_HEADER:Ljava/lang/String; = "Californium3 CoAP Properties file"

.field private static final DEFAULT_MODULES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static standard:Lorg/eclipse/californium/elements/config/Configuration;


# instance fields
.field private final definitions:Lorg/eclipse/californium/elements/Definitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final modules:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final transientValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 179
    new-instance v0, Ljava/io/File;

    const-string v1, "Californium3.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_FILE:Ljava/io/File;

    .line 219
    const-class v0, Lorg/eclipse/californium/elements/config/Configuration;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_MODULES:Ljava/util/concurrent/ConcurrentMap;

    .line 229
    new-instance v0, Lorg/eclipse/californium/elements/Definitions;

    const-string v1, "Configuration"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    .line 455
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    .line 456
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_MODULES:Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    .line 457
    invoke-direct {p0}, Lorg/eclipse/californium/elements/config/Configuration;->applyModules()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 2

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    .line 467
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_DEFINITIONS:Lorg/eclipse/californium/elements/Definitions;

    iget-object v1, p1, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/californium/elements/Definitions;

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Lorg/eclipse/californium/elements/Definitions;)V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    .line 469
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_MODULES:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    .line 471
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    iget-object v1, p1, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 472
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    iget-object p1, p1, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)V
    .locals 5

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    .line 482
    new-instance v0, Lorg/eclipse/californium/elements/Definitions;

    const-string v1, "Configuration"

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/Definitions;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    .line 483
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    .line 484
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 485
    iget-object v3, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->addModule(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    sget-object v3, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;->getModule()Ljava/lang/String;

    move-result-object v2

    const-string v4, "added {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/californium/elements/config/Configuration;->applyModules()V

    return-void
.end method

.method public static addDefaultModule(Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)V
    .locals 2

    .line 297
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_MODULES:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p0}, Lorg/eclipse/californium/elements/config/Configuration;->addModule(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;->getModule()Ljava/lang/String;

    move-result-object p0

    const-string v1, "defaults added {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static addModule(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;",
            ">;",
            "Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 273
    invoke-interface {p1}, Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;->getModule()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    invoke-interface {p0, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already registered with different provider!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    .line 278
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DefinitionsProvider\'s module name must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DefinitionsProvider\'s module must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "DefinitionsProvider must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Modules must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private apply(Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 510
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 511
    invoke-interface {p1, p0}, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;->applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V

    .line 512
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 513
    iget-object v1, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 514
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 515
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 516
    sget-object v2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Add missing module {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    iget-object v2, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;

    invoke-interface {v1, p0}, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;->applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-interface {p1, p0}, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;->applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V

    :cond_1
    return-void
.end method

.method private applyModules()V
    .locals 2

    .line 498
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;

    .line 499
    invoke-interface {v1, p0}, Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;->applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 2

    .line 382
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Creating configuration properties from stream"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 383
    new-instance v0, Lorg/eclipse/californium/elements/config/Configuration;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/config/Configuration;-><init>()V

    .line 384
    invoke-direct {v0, p1}, Lorg/eclipse/californium/elements/config/Configuration;->apply(Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)V

    .line 386
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/config/Configuration;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 388
    sget-object p1, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cannot load properties from stream: {}"

    invoke-interface {p1, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static createStandardFromStream(Ljava/io/InputStream;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/config/Configuration;->createFromStream(Ljava/io/InputStream;Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object p0

    sput-object p0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    .line 365
    sget-object p0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public static createStandardWithFile(Ljava/io/File;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 2

    const-string v0, "Californium3 CoAP Properties file"

    const/4 v1, 0x0

    .line 411
    invoke-static {p0, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->createWithFile(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object p0

    sput-object p0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    .line 412
    sget-object p0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public static createStandardWithoutFile()Lorg/eclipse/californium/elements/config/Configuration;
    .locals 2

    .line 346
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Creating standard configuration properties without a file"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 347
    new-instance v0, Lorg/eclipse/californium/elements/config/Configuration;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/config/Configuration;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    .line 348
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    return-object v0
.end method

.method public static createWithFile(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1

    if-eqz p0, :cond_1

    .line 438
    new-instance v0, Lorg/eclipse/californium/elements/config/Configuration;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/config/Configuration;-><init>()V

    .line 439
    invoke-direct {v0, p2}, Lorg/eclipse/californium/elements/config/Configuration;->apply(Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;)V

    .line 440
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {v0, p0}, Lorg/eclipse/californium/elements/config/Configuration;->load(Ljava/io/File;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/eclipse/californium/elements/config/Configuration;->store(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 436
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1098
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/elements/Definitions;->get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Definition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1104
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 1096
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "definition must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStandard()Lorg/eclipse/californium/elements/config/Configuration;
    .locals 2

    .line 320
    const-class v0, Lorg/eclipse/californium/elements/config/Configuration;

    monitor-enter v0

    .line 321
    :try_start_0
    sget-object v1, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    if-nez v1, :cond_0

    .line 322
    sget-object v1, Lorg/eclipse/californium/elements/config/Configuration;->DEFAULT_FILE:Ljava/io/File;

    invoke-static {v1}, Lorg/eclipse/californium/elements/config/Configuration;->createStandardWithFile(Ljava/io/File;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 323
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    return-object v0

    :catchall_0
    move-exception v1

    .line 323
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadValue(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 694
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 695
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 699
    sget-object p2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "{}"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1127
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/Definitions;->addIfAbsent(Lorg/eclipse/californium/elements/Definition;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1129
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Definition "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 1132
    invoke-virtual {p1, p3}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 1134
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->isAssignableFrom(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 1135
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1139
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/californium/elements/config/ValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :goto_2
    iget-object p3, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 1141
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/ValueException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1125
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definition must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStandard(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 0

    .line 333
    sput-object p0, Lorg/eclipse/californium/elements/config/Configuration;->standard:Lorg/eclipse/californium/elements/config/Configuration;

    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/Definitions;->get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/config/DocumentedDefinition;

    if-eqz v0, :cond_5

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getDocumentation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 832
    invoke-virtual {v0, v2}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 834
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0xa

    .line 835
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "Default: "

    .line 837
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 841
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->normalizeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x1

    .line 845
    invoke-static {p1, v1}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3d

    .line 847
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    .line 848
    iget-object v1, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 850
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 851
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 853
    :cond_4
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 823
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Definition for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public add(Ljava/util/Dictionary;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 655
    invoke-virtual {p1}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 656
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    invoke-virtual {p1, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 658
    iget-object v3, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {v3, v1}, Lorg/eclipse/californium/elements/Definitions;->get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/elements/config/DocumentedDefinition;

    if-nez v3, :cond_0

    .line 660
    sget-object v2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Ignore {}, no configuration definition available!"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object v4, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    sget-object v2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Ignore {}, definition set transient!"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 664
    :cond_1
    instance-of v4, v2, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 665
    check-cast v2, Ljava/lang/String;

    .line 666
    invoke-direct {p0, v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->loadValue(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    .line 668
    invoke-virtual {v3, v2}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->isAssignableFrom(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 669
    sget-object v4, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "{} is not a {}!"

    invoke-interface {v4, v7, v2, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v5

    .line 673
    :cond_3
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->checkRawValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/californium/elements/config/ValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v5

    .line 678
    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void

    .line 653
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dictionary must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/util/Properties;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 611
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 612
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 613
    check-cast v1, Ljava/lang/String;

    .line 614
    iget-object v2, p0, Lorg/eclipse/californium/elements/config/Configuration;->definitions:Lorg/eclipse/californium/elements/Definitions;

    invoke-virtual {v2, v1}, Lorg/eclipse/californium/elements/Definitions;->get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/elements/config/DocumentedDefinition;

    if-nez v2, :cond_1

    .line 616
    sget-object v2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Ignore {}, no configuration definition available!"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v3, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 618
    sget-object v2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Ignore {}, definition set transient!"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-direct {p0, v2, v3}, Lorg/eclipse/californium/elements/config/Configuration;->loadValue(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 622
    iget-object v3, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void

    .line 609
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "properties must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 2

    .line 1043
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/config/Configuration;->getInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1

    .line 1045
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Lorg/eclipse/californium/elements/config/BasicDefinition;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicDefinition<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 990
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/config/Configuration;->getInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAsText(Lorg/eclipse/californium/elements/config/DocumentedDefinition;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 902
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/config/Configuration;->getInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;)Ljava/lang/Object;

    move-result-object v0

    .line 903
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->writeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimeAsInt(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)I
    .locals 5

    .line 1069
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/config/Configuration;->get(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1071
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, v0, v2

    const-string v0, ")!"

    if-gtz p2, :cond_1

    .line 1073
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    .line 1076
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1

    .line 1074
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t fit to int (Min. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, -0x80000000

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1072
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t fit to int (Max. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7fffffff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public load(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 548
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading properties from file {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/config/Configuration;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 549
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 551
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 552
    sget-object v1, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cannot load properties from file {}: {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 546
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 581
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 582
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 583
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/config/Configuration;->add(Ljava/util/Properties;)V

    return-void

    .line 579
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input stream must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicDefinition<",
            "TT;>;TT;)",
            "Lorg/eclipse/californium/elements/config/Configuration;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 918
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/elements/config/Configuration;->setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 2

    int-to-long v0, p2

    .line 1029
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public set(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 1010
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    .line 1012
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/californium/elements/config/Configuration;->setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 1007
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setAsList(Lorg/eclipse/californium/elements/config/BasicListDefinition;[Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicListDefinition<",
            "TT;>;[TT;)",
            "Lorg/eclipse/californium/elements/config/Configuration;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 941
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/elements/config/Configuration;->setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 939
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Values must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setAsListFromText(Lorg/eclipse/californium/elements/config/BasicListDefinition;[Ljava/lang/String;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/BasicListDefinition<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/californium/elements/config/Configuration;"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 962
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 963
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 965
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 967
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 969
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 971
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lorg/eclipse/californium/elements/config/Configuration;->setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 973
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 974
    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/californium/elements/config/Configuration;->setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    .line 960
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Values must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFromText(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/String;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/californium/elements/config/Configuration;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 890
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/californium/elements/config/Configuration;->setInternal(Lorg/eclipse/californium/elements/config/DocumentedDefinition;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransient(Lorg/eclipse/californium/elements/config/DocumentedDefinition;)Lorg/eclipse/californium/elements/config/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/config/DocumentedDefinition<",
            "TT;>;)",
            "Lorg/eclipse/californium/elements/config/Configuration;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 874
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/californium/elements/config/DocumentedDefinition;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 872
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Definition must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public store(Ljava/io/File;)V
    .locals 1

    const-string v0, "Californium3 CoAP Properties file"

    .line 716
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/config/Configuration;->store(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public store(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 732
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/eclipse/californium/elements/config/Configuration;->store(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 732
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 734
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    .line 735
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "cannot write properties to {}: {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 730
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    if-eqz p3, :cond_0

    .line 757
    sget-object v0, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "writing properties to {}"

    invoke-interface {v0, v1, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/config/Configuration;->modules:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 761
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 763
    iget-object v3, p0, Lorg/eclipse/californium/elements/config/Configuration;->values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 764
    iget-object v5, p0, Lorg/eclipse/californium/elements/config/Configuration;->transientValues:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    .line 768
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 769
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 770
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_1

    .line 776
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 779
    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 780
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 781
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :try_start_1
    invoke-static {p2}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->normalizeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 783
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 784
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 785
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->normalizeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string p1, "#"

    .line 788
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 790
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 791
    invoke-direct {p0, p2, v0}, Lorg/eclipse/californium/elements/config/Configuration;->writeProperty(Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_1

    .line 793
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 794
    invoke-direct {p0, p2, v0}, Lorg/eclipse/californium/elements/config/Configuration;->writeProperty(Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 796
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 781
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 796
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_8

    .line 799
    sget-object p2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cannot write properties to {}: {}"

    invoke-interface {p2, v0, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 801
    :cond_8
    sget-object p2, Lorg/eclipse/californium/elements/config/Configuration;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "cannot write properties: {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-void

    .line 754
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "header must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 751
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "output stream must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
