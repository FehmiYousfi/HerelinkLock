.class public final enum Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;
.super Ljava/lang/Enum;
.source "WeakConcurrentSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cleaner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

.field public static final enum INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

.field public static final enum MANUAL:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

.field public static final enum THREAD:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 87
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    const/4 v1, 0x0

    const-string v2, "THREAD"

    invoke-direct {v0, v2, v1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    const/4 v2, 0x1

    const-string v3, "INLINE"

    invoke-direct {v0, v3, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    const/4 v3, 0x2

    const-string v4, "MANUAL"

    invoke-direct {v0, v4, v3}, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->MANUAL:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    .line 86
    sget-object v4, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->THREAD:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    aput-object v4, v0, v1

    sget-object v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->INLINE:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->MANUAL:Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->$VALUES:[Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;
    .locals 1

    .line 86
    const-class v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    return-object p0
.end method

.method public static values()[Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;
    .locals 1

    .line 86
    sget-object v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->$VALUES:[Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    invoke-virtual {v0}, [Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/util/concurrent/WeakConcurrentSet$Cleaner;

    return-object v0
.end method
