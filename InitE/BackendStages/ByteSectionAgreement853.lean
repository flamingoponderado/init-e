import InitE.BackendStages.BytesData853
import InitE.BackendStages.BytePiecesData853
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section853_eq : ByteData.bytes853 = [piece853_0].flatten := by
  rw [piece853_0_eq]
  rfl
#print axioms section853_eq
end InitE.BackendStages.BytePieces
