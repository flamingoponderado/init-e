import InitE.BackendStages.BytesData841
import InitE.BackendStages.BytePiecesData841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section841_eq : ByteData.bytes841 = [piece841_0].flatten := by
  rw [piece841_0_eq]
  rfl
#print axioms section841_eq
end InitE.BackendStages.BytePieces
