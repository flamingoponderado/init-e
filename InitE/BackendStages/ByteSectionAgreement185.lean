import InitE.BackendStages.BytesData185
import InitE.BackendStages.BytePiecesData185
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section185_eq : ByteData.bytes185 = [piece185_0].flatten := by
  rw [piece185_0_eq]
  rfl
#print axioms section185_eq
end InitE.BackendStages.BytePieces
