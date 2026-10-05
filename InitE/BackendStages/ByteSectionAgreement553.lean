import InitE.BackendStages.BytesData553
import InitE.BackendStages.BytePiecesData553
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section553_eq : ByteData.bytes553 = [piece553_0, piece553_1].flatten := by
  rw [piece553_0_eq, piece553_1_eq]
  rfl
#print axioms section553_eq
end InitE.BackendStages.BytePieces
