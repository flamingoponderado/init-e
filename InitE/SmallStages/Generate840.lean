import Tools.GenSmallStages
import InitE.SmallStages.Oracles840
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 840 InitE.WordStages.source840.2.1 InitE.WordStages.source840.2.2 InitE.SmallStages.Oracles840.oracle840
