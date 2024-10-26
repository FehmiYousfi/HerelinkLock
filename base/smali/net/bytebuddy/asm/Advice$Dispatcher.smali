.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    }
.end annotation


# static fields
.field public static final IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

.field public static final IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract isAlive()Z
.end method
