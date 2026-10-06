import InitE.BackendStages.BytesData729
import InitE.BackendStages.BytePiecesData729
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section729_eq : ByteData.bytes729 = [piece729_0].flatten := by
  rw [piece729_0_eq]
  rfl
#print axioms section729_eq
end InitE.BackendStages.BytePieces
