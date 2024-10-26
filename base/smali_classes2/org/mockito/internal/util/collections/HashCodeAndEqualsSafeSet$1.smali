.class Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;
.super Ljava/lang/Object;
.source "HashCodeAndEqualsSafeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;


# direct methods
.method constructor <init>(Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;->this$0:Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object p1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;->this$0:Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;

    invoke-static {p1}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;->access$000(Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;

    invoke-virtual {v0}, Lorg/mockito/internal/util/collections/HashCodeAndEqualsMockWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mockito/internal/util/collections/HashCodeAndEqualsSafeSet$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
