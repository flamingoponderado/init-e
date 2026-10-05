import InitE.BackendStages.BytesData121
import InitE.BackendStages.BytePiecesData121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section121_eq : ByteData.bytes121 = [piece121_0, piece121_1].flatten := by
  rw [piece121_0_eq, piece121_1_eq]
  rfl
#print axioms section121_eq
end InitE.BackendStages.BytePieces
