.class final Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$1;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "MockInjectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
