import InitE.BackendStages.BytePiecesData519
import InitE.BackendStages.BytePiecesData520
import InitE.BackendStages.BytePiecesData521
import InitE.BackendStages.BytePiecesData522
import InitE.BackendStages.BytePiecesData523
import InitE.BackendStages.BytePiecesData524
import InitECandidate.Bytes080
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate080_eq : InitECandidate.bytes080 = [piece519_1, piece520_0, piece521_0, piece522_0, piece523_0, piece524_0].flatten := by
  rw [piece519_1_eq, piece520_0_eq, piece521_0_eq, piece522_0_eq, piece523_0_eq, piece524_0_eq]
  rfl
#print axioms candidate080_eq
end InitE.BackendStages.BytePieces
