import InitE.BackendStages.BytesData580
import InitE.BackendStages.BytePiecesData580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section580_eq : ByteData.bytes580 = [piece580_0].flatten := by
  rw [piece580_0_eq]
  rfl
#print axioms section580_eq
end InitE.BackendStages.BytePieces
