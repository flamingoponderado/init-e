import InitE.BackendStages.BytesData787
import InitE.BackendStages.BytePiecesData787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section787_eq : ByteData.bytes787 = [piece787_0].flatten := by
  rw [piece787_0_eq]
  rfl
#print axioms section787_eq
end InitE.BackendStages.BytePieces
