import InitE.BackendStages.BytesData821
import InitE.BackendStages.BytePiecesData821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section821_eq : ByteData.bytes821 = [piece821_0].flatten := by
  rw [piece821_0_eq]
  rfl
#print axioms section821_eq
end InitE.BackendStages.BytePieces
