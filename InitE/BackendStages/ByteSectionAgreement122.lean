import InitE.BackendStages.BytesData122
import InitE.BackendStages.BytePiecesData122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section122_eq : ByteData.bytes122 = [piece122_0].flatten := by
  rw [piece122_0_eq]
  rfl
#print axioms section122_eq
end InitE.BackendStages.BytePieces
