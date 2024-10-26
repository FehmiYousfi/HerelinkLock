.class Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;
.super Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;
.source "DetachedThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction<",
        "Ljava/lang/Thread;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;


# direct methods
.method constructor <init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;->this$0:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-direct {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;->defaultValue(Ljava/lang/Thread;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected defaultValue(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$2;->this$0:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->initialValue(Ljava/lang/Thread;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
