.class public final enum Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
.super Ljava/lang/Enum;
.source "DetachedThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cleaner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

.field public static final enum INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

.field public static final enum MANUAL:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

.field public static final enum THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 136
    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const/4 v1, 0x0

    const-string v2, "THREAD"

    invoke-direct {v0, v2, v1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const/4 v2, 0x1

    const-string v3, "INLINE"

    invoke-direct {v0, v3, v2}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    new-instance v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const/4 v3, 0x2

    const-string v4, "MANUAL"

    invoke-direct {v0, v4, v3}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->MANUAL:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    .line 135
    sget-object v4, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    aput-object v4, v0, v1

    sget-object v1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->MANUAL:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->$VALUES:[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
    .locals 1

    .line 135
    const-class v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    return-object p0
.end method

.method public static values()[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;
    .locals 1

    .line 135
    sget-object v0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->$VALUES:[Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    invoke-virtual {v0}, [Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;

    return-object v0
.end method
