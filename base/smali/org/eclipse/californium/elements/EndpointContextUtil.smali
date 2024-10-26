.class public Lorg/eclipse/californium/elements/EndpointContextUtil;
.super Ljava/lang/Object;
.source "EndpointContextUtil.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final WARN_FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    const-class v0, Lorg/eclipse/californium/elements/EndpointContextUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/EndpointContextUtil;->LOGGER:Lorg/slf4j/Logger;

    .line 33
    new-instance v0, Lorg/eclipse/californium/elements/util/FilteredLogger;

    sget-object v2, Lorg/eclipse/californium/elements/EndpointContextUtil;->LOGGER:Lorg/slf4j/Logger;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    const-wide/16 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/californium/elements/util/FilteredLogger;-><init>(Lorg/slf4j/Logger;JJ)V

    sput-object v0, Lorg/eclipse/californium/elements/EndpointContextUtil;->WARN_FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFollowUpEndpointContext(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Lorg/eclipse/californium/elements/EndpointContext;
    .locals 1

    .line 89
    sget-object v0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->KEY_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/Definition;

    invoke-interface {p0, v0}, Lorg/eclipse/californium/elements/EndpointContext;->getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "none"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    sget-object p0, Lorg/eclipse/californium/elements/DtlsEndpointContext;->ATTRIBUTE_HANDSHAKE_MODE_NONE:Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-static {p1, p0}, Lorg/eclipse/californium/elements/MapBasedEndpointContext;->addEntries(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;)Lorg/eclipse/californium/elements/MapBasedEndpointContext;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static match(Ljava/lang/String;Lorg/eclipse/californium/elements/Definitions;Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/elements/Definitions<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>;",
            "Lorg/eclipse/californium/elements/EndpointContext;",
            "Lorg/eclipse/californium/elements/EndpointContext;",
            ")Z"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/eclipse/californium/elements/EndpointContextUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    .line 49
    sget-object v1, Lorg/eclipse/californium/elements/EndpointContextUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    .line 51
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/californium/elements/Definitions;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/californium/elements/Definition;

    move-object/from16 v6, p2

    .line 52
    invoke-interface {v6, v5}, Lorg/eclipse/californium/elements/EndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, p3

    .line 53
    invoke-interface {v8, v5}, Lorg/eclipse/californium/elements/EndpointContext;->get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-eq v7, v9, :cond_1

    if-eqz v7, :cond_0

    .line 54
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_2

    :cond_0
    move v11, v10

    goto :goto_3

    :cond_1
    :goto_2
    move v11, v3

    :goto_3
    if-nez v11, :cond_2

    if-nez v0, :cond_2

    return v10

    :cond_2
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    if-nez v11, :cond_3

    .line 61
    sget-object v15, Lorg/eclipse/californium/elements/EndpointContextUtil;->WARN_FILTER:Lorg/eclipse/californium/elements/util/FilteredLogger;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object p0, v14, v10

    aput-object v5, v14, v3

    aput-object v7, v14, v13

    aput-object v9, v14, v12

    const-string v5, "{}, {}: \"{}\" != \"{}\""

    invoke-virtual {v15, v5, v14}, Lorg/eclipse/californium/elements/util/FilteredLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    .line 64
    sget-object v15, Lorg/eclipse/californium/elements/EndpointContextUtil;->LOGGER:Lorg/slf4j/Logger;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object p0, v14, v10

    aput-object v5, v14, v3

    aput-object v7, v14, v13

    aput-object v9, v14, v12

    const-string v5, "{}, {}: \"{}\" == \"{}\""

    invoke-interface {v15, v5, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    if-eqz v11, :cond_5

    goto :goto_0

    :cond_5
    move v4, v10

    goto :goto_1

    :cond_6
    return v4
.end method
