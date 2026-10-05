import InitE.BackendStages.BytesData435
import InitE.BackendStages.BytePiecesData435
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section435_eq : ByteData.bytes435 = [piece435_0, piece435_1].flatten := by
  rw [piece435_0_eq, piece435_1_eq]
  rfl
#print axioms section435_eq
end InitE.BackendStages.BytePieces
