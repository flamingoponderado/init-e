import InitE.BackendStages.BytesData745
import InitE.BackendStages.BytePiecesData745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section745_eq : ByteData.bytes745 = [piece745_0].flatten := by
  rw [piece745_0_eq]
  rfl
#print axioms section745_eq
end InitE.BackendStages.BytePieces
