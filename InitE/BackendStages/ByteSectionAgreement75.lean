import InitE.BackendStages.BytesData75
import InitE.BackendStages.BytePiecesData75
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section75_eq : ByteData.bytes75 = [piece75_0].flatten := by
  rw [piece75_0_eq]
  rfl
#print axioms section75_eq
end InitE.BackendStages.BytePieces
