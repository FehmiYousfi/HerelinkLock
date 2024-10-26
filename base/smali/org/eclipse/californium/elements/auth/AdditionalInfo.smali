.class public final Lorg/eclipse/californium/elements/auth/AdditionalInfo;
.super Ljava/lang/Object;
.source "AdditionalInfo.java"


# static fields
.field private static final EMPTY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final info:Ljava/util/Map;
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

    .line 29
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/eclipse/californium/elements/auth/AdditionalInfo;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lorg/eclipse/californium/elements/auth/AdditionalInfo;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/californium/elements/auth/AdditionalInfo;->info:Ljava/util/Map;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/auth/AdditionalInfo;->info:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public static empty()Lorg/eclipse/californium/elements/auth/AdditionalInfo;
    .locals 2

    .line 54
    new-instance v0, Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/auth/AdditionalInfo;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static from(Ljava/util/Map;)Lorg/eclipse/californium/elements/auth/AdditionalInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/eclipse/californium/elements/auth/AdditionalInfo;"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/eclipse/californium/elements/auth/AdditionalInfo;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/auth/AdditionalInfo;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/eclipse/californium/elements/auth/AdditionalInfo;->info:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
