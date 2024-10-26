.class Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;
.super Ljava/lang/Object;
.source "IndependentAnnotationEngine.java"

# interfaces
.implements Lorg/mockito/internal/configuration/FieldAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/IndependentAnnotationEngine;->forAnnotation(Ljava/lang/annotation/Annotation;)Lorg/mockito/internal/configuration/FieldAnnotationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/configuration/FieldAnnotationProcessor<",
        "TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/configuration/IndependentAnnotationEngine;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/IndependentAnnotationEngine;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/mockito/internal/configuration/IndependentAnnotationEngine$1;->this$0:Lorg/mockito/internal/configuration/IndependentAnnotationEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
