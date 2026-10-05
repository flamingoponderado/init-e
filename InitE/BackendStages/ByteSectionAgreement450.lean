import InitE.BackendStages.BytesData450
import InitE.BackendStages.BytePiecesData450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section450_eq : ByteData.bytes450 = [piece450_0].flatten := by
  rw [piece450_0_eq]
  rfl
#print axioms section450_eq
end InitE.BackendStages.BytePieces
