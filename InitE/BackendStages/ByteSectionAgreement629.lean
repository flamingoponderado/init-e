import InitE.BackendStages.BytesData629
import InitE.BackendStages.BytePiecesData629
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section629_eq : ByteData.bytes629 = [piece629_0].flatten := by
  rw [piece629_0_eq]
  rfl
#print axioms section629_eq
end InitE.BackendStages.BytePieces
