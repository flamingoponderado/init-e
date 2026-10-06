import InitE.BackendStages.BytesData151
import InitE.BackendStages.BytePiecesData151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section151_eq : ByteData.bytes151 = [piece151_0].flatten := by
  rw [piece151_0_eq]
  rfl
#print axioms section151_eq
end InitE.BackendStages.BytePieces
