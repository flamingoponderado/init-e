import InitE.BackendStages.BytesData90
import InitE.BackendStages.BytePiecesData90
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section90_eq : ByteData.bytes90 = [piece90_0].flatten := by
  rw [piece90_0_eq]
  rfl
#print axioms section90_eq
end InitE.BackendStages.BytePieces
