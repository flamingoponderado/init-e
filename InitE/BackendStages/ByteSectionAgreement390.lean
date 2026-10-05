import InitE.BackendStages.BytesData390
import InitE.BackendStages.BytePiecesData390
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section390_eq : ByteData.bytes390 = [piece390_0].flatten := by
  rw [piece390_0_eq]
  rfl
#print axioms section390_eq
end InitE.BackendStages.BytePieces
