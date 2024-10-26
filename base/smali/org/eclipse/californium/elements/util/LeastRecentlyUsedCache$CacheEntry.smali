.class Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastUpdate:J

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 969
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->key:Ljava/lang/Object;

    .line 970
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->value:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 971
    iput-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 975
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->key:Ljava/lang/Object;

    .line 980
    iput-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->value:Ljava/lang/Object;

    .line 981
    iput-wide p3, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;)V
    .locals 0

    .line 960
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;)V
    .locals 0

    .line 960
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$1;)V
    .locals 0

    .line 960
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .locals 0

    .line 960
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-object p0
.end method

.method static synthetic access$102(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .locals 0

    .line 960
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;
    .locals 0

    .line 960
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->getEntry()Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V
    .locals 0

    .line 960
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->recordAccess(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;
    .locals 0

    .line 960
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .locals 0

    .line 960
    iget-object p0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-object p0
.end method

.method static synthetic access$202(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;
    .locals 0

    .line 960
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-object p1
.end method

.method static synthetic access$300(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V
    .locals 0

    .line 960
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->remove()V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;J)Z
    .locals 0

    .line 960
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->isStale(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;
    .locals 0

    .line 960
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)Ljava/lang/Object;
    .locals 0

    .line 960
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V
    .locals 0

    .line 960
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->addBefore(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    return-void
.end method

.method static synthetic access$900(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)J
    .locals 2

    .line 960
    iget-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    return-wide v0
.end method

.method private addBefore(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1007
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 1008
    iget-object p1, p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 1009
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    iput-object p0, p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 1010
    iget-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    iput-object p0, p1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-void
.end method

.method private getEntry()Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped<",
            "TV;>;"
        }
    .end annotation

    .line 985
    new-instance v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->value:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Timestamped;-><init>(Ljava/lang/Object;J)V

    return-object v0
.end method

.method private getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method private isStale(J)Z
    .locals 4

    .line 997
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    sub-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private recordAccess(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1001
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->remove()V

    .line 1002
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    .line 1003
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->addBefore(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;)V

    return-void
.end method

.method private remove()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    iput-object v1, v0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    .line 1015
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->after:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    iput-object v0, v1, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->before:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheEntry [key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last access: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$CacheEntry;->lastUpdate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
