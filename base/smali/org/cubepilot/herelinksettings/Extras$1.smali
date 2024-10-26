.class Lorg/cubepilot/herelinksettings/Extras$1;
.super Ljava/lang/Object;
.source "Extras.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/Extras;->saveDnegName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/Extras;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$paramname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/Extras;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$1;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/Extras$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/Extras$1;->val$paramname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 334
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$1;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    iget-object p2, p0, Lorg/cubepilot/herelinksettings/Extras$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/cubepilot/herelinksettings/Extras;->m_DnegText:Ljava/lang/String;

    .line 335
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$1;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/Extras;->m_DnegText:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$1;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/Extras;->m_DnegText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$1;->val$paramname:Ljava/lang/String;

    iget-object p2, p0, Lorg/cubepilot/herelinksettings/Extras$1;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    iget-object p2, p2, Lorg/cubepilot/herelinksettings/Extras;->m_DnegText:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/Extras$1;->this$0:Lorg/cubepilot/herelinksettings/Extras;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/Extras;->access$000(Lorg/cubepilot/herelinksettings/Extras;)V

    return-void
.end method
