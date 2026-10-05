import InitE.BackendStages.BytesData658
import InitE.BackendStages.BytePiecesData658
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section658_eq : ByteData.bytes658 = [piece658_0].flatten := by
  rw [piece658_0_eq]
  rfl
#print axioms section658_eq
end InitE.BackendStages.BytePieces
