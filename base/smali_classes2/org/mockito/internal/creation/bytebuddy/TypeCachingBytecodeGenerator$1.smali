.class Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;
.super Ljava/lang/Object;
.source "TypeCachingBytecodeGenerator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

.field final synthetic val$params:Lorg/mockito/internal/creation/bytebuddy/MockFeatures;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;->val$params:Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;->this$0:Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    invoke-static {v0}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->access$100(Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;)Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;->val$params:Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    invoke-interface {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;->call()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
