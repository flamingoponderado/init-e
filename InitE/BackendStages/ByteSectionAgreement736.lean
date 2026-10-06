import InitE.BackendStages.BytesData736
import InitE.BackendStages.BytePiecesData736
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section736_eq : ByteData.bytes736 = [piece736_0, piece736_1].flatten := by
  rw [piece736_0_eq, piece736_1_eq]
  rfl
#print axioms section736_eq
end InitE.BackendStages.BytePieces
