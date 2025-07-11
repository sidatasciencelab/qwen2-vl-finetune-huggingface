from src.finetune25 import train_and_validate

train_and_validate(
    model_name="Qwen/Qwen2.5-VL-7B-Instruct",
    output_dir="/output",
    dataset_name="wjbmattingly/test-german-line",
    image_column="image",
    text_column="text",
    user_text="Convert this image to text",
    train_field="train",
    val_field="train",
    num_accumulation_steps=2,
    train_select_end=100,
    val_select_end=100,
    eval_steps=10,
    max_steps=100,
    train_batch_size=1,
    val_batch_size=1,
    device="cpu"
)