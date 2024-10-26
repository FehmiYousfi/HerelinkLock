.class Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2$1;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCache.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;->contains(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$Predicate<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;Ljava/lang/Object;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2$1;->this$1:Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2;

    iput-object p2, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2$1;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/LeastRecentlyUsedCache$2$1;->val$o:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
