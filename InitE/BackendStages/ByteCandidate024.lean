import InitE.BackendStages.BytePiecesData233
import InitE.BackendStages.BytePiecesData234
import InitE.BackendStages.BytePiecesData235
import InitE.BackendStages.BytePiecesData236
import InitECandidate.Bytes024
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate024_eq : InitECandidate.bytes024 = [piece233_3, piece234_0, piece235_0, piece236_0].flatten := by
  rw [piece233_3_eq, piece234_0_eq, piece235_0_eq, piece236_0_eq]
  rfl
#print axioms candidate024_eq
end InitE.BackendStages.BytePieces
