import Tools.GenSmallStages
import InitE.SmallStages.Oracles749
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 749 InitE.WordStages.source749.2.1 InitE.WordStages.source749.2.2 InitE.SmallStages.Oracles749.oracle749
