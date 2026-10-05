import Tools.GenSmallStages
import InitE.SmallStages.Oracles745
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 745 InitE.WordStages.source745.2.1 InitE.WordStages.source745.2.2 InitE.SmallStages.Oracles745.oracle745
