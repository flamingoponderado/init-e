import InitE.BackendStages.BytesData98
import InitE.BackendStages.BytePiecesData98
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section98_eq : ByteData.bytes98 = [piece98_0].flatten := by
  rw [piece98_0_eq]
  rfl
#print axioms section98_eq
end InitE.BackendStages.BytePieces
