import InitE.BackendStages.BytesData6
import InitE.BackendStages.BytePiecesData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section6_eq : ByteData.bytes6 = [piece6_0].flatten := by
  rw [piece6_0_eq]
  rfl
#print axioms section6_eq
end InitE.BackendStages.BytePieces
